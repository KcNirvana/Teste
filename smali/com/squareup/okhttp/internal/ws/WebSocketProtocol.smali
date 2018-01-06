.class public final Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCEPT_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field static final B0_FLAG_FIN:I

.field static final B0_FLAG_RSV1:I

.field static final B0_FLAG_RSV2:I

.field static final B0_FLAG_RSV3:I

.field static final B0_MASK_OPCODE:I

.field static final B1_FLAG_MASK:I

.field static final B1_MASK_LENGTH:I

.field static final OPCODE_BINARY:I = 0x2

.field static final OPCODE_CONTINUATION:I = 0x0

.field static final OPCODE_CONTROL_CLOSE:I = 0x8

.field static final OPCODE_CONTROL_PING:I = 0x9

.field static final OPCODE_CONTROL_PONG:I = 0xa

.field static final OPCODE_FLAG_CONTROL:I

.field static final OPCODE_TEXT:I = 0x1

.field static final PAYLOAD_LONG:I = 0x7f

.field static final PAYLOAD_MAX:I = 0x7d

.field static final PAYLOAD_SHORT:I = 0x7e


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string v0, "10000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_FIN:I

    const-string v0, "01000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_RSV1:I

    const-string v0, "00100000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_RSV2:I

    const-string v0, "00010000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_FLAG_RSV3:I

    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B0_MASK_OPCODE:I

    const-string v0, "00001000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->OPCODE_FLAG_CONTROL:I

    const-string v0, "10000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B1_FLAG_MASK:I

    const-string v0, "01111111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;->B1_MASK_LENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static toggleMask([BJ[BJ)V
    .locals 4

    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    int-to-long v2, v1

    rem-long v2, p4, v2

    long-to-int v2, v2

    aget-byte v3, p0, v0

    aget-byte v2, p3, v2

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v2, 0x1

    add-long/2addr p4, v2

    goto :goto_0

    :cond_0
    return-void
.end method
