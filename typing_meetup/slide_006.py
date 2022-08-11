from dataclasses import dataclass
from typing import Any, Literal

from datetime import datetime, timezone


@dataclass
class Vehicle:
    vehicle_number: int
    x: int
    y: int
    state: Literal["driving", "standby", "off"] = "off"

    def serialize(self) -> dict[str, Any]:  # <- we need to be more specific
        return {
            "timestamp": datetime.now(timezone.utc),
            "vehicle_number": self.vehicle_number,
            "position": [self.x, self.y],
            "is_moving": self.state == "driving",
            "is_active": self.state != "off",
        }
