from loguru import logger


def hoge() -> str:
    """hoge

    Returns:
        str: hoge
    """

    logger.info("hoge")

    return "hoge"
