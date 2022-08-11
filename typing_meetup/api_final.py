from typing import TYPE_CHECKING, Literal, TypedDict
from datetime import datetime, timezone
from dataclasses import dataclass

from fastapi import FastAPI
import pydantic

if TYPE_CHECKING:
    TCoords = list[int]  # no tuple!
else:
    TCoords = pydantic.conlist(int, min_items=2, max_items=2)


class SerializedVehicleDict(TypedDict):
    timestamp: datetime
    vehicle_number: int
    position: TCoords
    is_moving: bool
    is_active: bool


@dataclass  # no slots!
class Vehicle:
    vehicle_number: int
    x: int
    y: int
    state: Literal["driving", "standby", "off"] = "off"

    def serialize(self) -> SerializedVehicleDict:
        return {
            "timestamp": datetime.now(timezone.utc),
            "vehicle_number": self.vehicle_number,
            "position": [self.x, self.y],
            "is_moving": self.state == "driving",
            "is_active": self.state != "off",
        }


app = FastAPI()


@app.post("/vehicle", response_model=SerializedVehicleDict)
def vehicle(input_vehicle: Vehicle):
    return input_vehicle.serialize()
