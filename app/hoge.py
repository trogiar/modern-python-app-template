from loguru import logger


def hoge() -> str:
    """
    Return "hoge".

    Returns:
        str: "hoge"
    """

    logger.info("hoge")

    return "hoge"
