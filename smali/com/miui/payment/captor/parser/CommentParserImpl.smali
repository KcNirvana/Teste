.class public Lcom/miui/payment/captor/parser/CommentParserImpl;
.super Ljava/lang/Object;
.source "CommentParserImpl.java"

# interfaces
.implements Lcom/miui/payment/captor/parser/CommentParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseComment(Lcom/miui/payment/captor/CaptorToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.taobao.taobao"

    invoke-virtual {p1}, Lcom/miui/payment/captor/CaptorToken;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p2, "\u6dd8\u5b9d"

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, "\u8f6c\u8d26"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p2, ""

    :cond_1
    return-object p2

    :cond_2
    const-string/jumbo v0, "com.tmall.wireless"

    invoke-virtual {p1}, Lcom/miui/payment/captor/CaptorToken;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p2, "\u5929\u732b"

    goto :goto_0
.end method
