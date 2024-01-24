from fastapi import FastAPI
import pytest

app = FastAPI()

@app.get("/sum")
async def test_get_sum(a: int, b: int):
    result = a + b
    return {"sum": result}
