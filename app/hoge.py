from loguru import logger

from app.settings import get_settings


def hoge() -> str:
    """hoge

    Returns:
        str: hoge
    """

    logger.info(f"This is {get_settings().app_name}")

    return "hoge"
