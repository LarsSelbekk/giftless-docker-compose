import jwt
import sys

if len(sys.argv) <= 1:
    print("help: python generate-token.py SCOPE [ADDITIONAL SCOPES...]")
    print("example: python generate-token.py larsselbekk dotclique/redox-reality mathiazom/*:read")
    print("help: for more details, see https://github.com/datopian/giftless/blob/master/giftless/auth/jwt.py")
else:
    scopes = list(map(lambda s: f"obj:{s}", sys.argv[1:]))
    with open("giftless.key", "r") as secret_file:
        secret = secret_file.read()
        scopes = scopes
        print(jwt.encode({"sub": "*/*", "scopes": scopes}, secret, "RS256").decode("utf8"))
