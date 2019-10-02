.class final Lorg/apache/ws/commons/util/Base64$2$1;
.super Lorg/apache/ws/commons/util/Base64$Decoder;
.source "Base64.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/ws/commons/util/Base64$2;


# direct methods
.method constructor <init>(Lorg/apache/ws/commons/util/Base64$2;I)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/ws/commons/util/Base64$Decoder;-><init>(I)V

    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$2$1;->this$0:Lorg/apache/ws/commons/util/Base64$2;

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

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$2$1;->this$0:Lorg/apache/ws/commons/util/Base64$2;

    invoke-static {v0}, Lorg/apache/ws/commons/util/Base64$2;->access$200(Lorg/apache/ws/commons/util/Base64$2;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
