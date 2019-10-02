.class final Lorg/apache/ws/commons/util/Base64$2;
.super Ljava/io/Writer;
.source "Base64.java"


# instance fields
.field private final decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

.field private final synthetic val$pStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$2;->val$pStream:Ljava/io/OutputStream;

    new-instance p1, Lorg/apache/ws/commons/util/Base64$2$1;

    const/16 v0, 0x400

    invoke-direct {p1, p0, v0}, Lorg/apache/ws/commons/util/Base64$2$1;-><init>(Lorg/apache/ws/commons/util/Base64$2;I)V

    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$2;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ws/commons/util/Base64$2;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/ws/commons/util/Base64$2;->val$pStream:Ljava/io/OutputStream;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/ws/commons/util/Base64$2;->flush()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$2;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    invoke-virtual {v0}, Lorg/apache/ws/commons/util/Base64$Decoder;->flush()V

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$2;->val$pStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$2;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ws/commons/util/Base64$Decoder;->write([CII)V

    return-void
.end method
