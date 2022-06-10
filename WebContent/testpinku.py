import pinku
import pytest

def test_add():
    assert pinku.add(2,3)==5
    assert pinku.add(5,5)==10

def test_pro():
    assert pinku.pro(2,3)==6
    assert pinku.pro(5,5)==25

def test_stradd():
    result= pinku.add("pinku","chigurupati")
    assert result=="pinkuchigurupati"
    assert type(result) is str
    assert "pinku" in result
    assert "hai" not in result

   
