.class final Lorg/apache/ws/commons/util/Base64$1;
.super Lorg/apache/ws/commons/util/Base64$Encoder;
.source "Base64.java"


# instance fields
.field private final synthetic val$pWriter:Ljava/io/Writer;


# direct methods
.method constructor <init>([CILjava/lang/String;Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ws/commons/util/Base64$Encoder;-><init>([CILjava/lang/String;)V

    iput-object p4, p0, Lorg/apache/ws/commons/util/Base64$1;->val$pWriter:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method protected writeBuffer([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$1;->val$pWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
