.class final Lorg/apache/ws/commons/util/Base64$3;
.super Lorg/apache/ws/commons/util/Base64$Decoder;
.source "Base64.java"


# instance fields
.field private final synthetic val$baos:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(ILjava/io/ByteArrayOutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/ws/commons/util/Base64$Decoder;-><init>(I)V

    iput-object p2, p0, Lorg/apache/ws/commons/util/Base64$3;->val$baos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected writeBuffer([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$3;->val$baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
