.class public Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;
.super Ljava/io/OutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncoderOutputStream"
.end annotation


# instance fields
.field private final encoder:Lorg/apache/ws/commons/util/Base64$Encoder;

.field private final oneByte:[B


# direct methods
.method public constructor <init>(Lorg/apache/ws/commons/util/Base64$Encoder;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->oneByte:[B

    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->encoder:Lorg/apache/ws/commons/util/Base64$Encoder;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->encoder:Lorg/apache/ws/commons/util/Base64$Encoder;

    invoke-virtual {v0}, Lorg/apache/ws/commons/util/Base64$Encoder;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->oneByte:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->encoder:Lorg/apache/ws/commons/util/Base64$Encoder;

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->oneByte:[B

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/ws/commons/util/Base64$Encoder;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->encoder:Lorg/apache/ws/commons/util/Base64$Encoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ws/commons/util/Base64$Encoder;->write([BII)V

    return-void
.end method
