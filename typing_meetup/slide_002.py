from datetime import datetime, timezone


def serialize(obj):
    return {
        "timestamp": datetime.now(timezone.utc),
        "vehicle_number": obj.vehicle_number,
        "position": [obj.x, obj.y],
        "is_moving": obj.state == "driving",
        "is_active": obj.state != "off",
    }
