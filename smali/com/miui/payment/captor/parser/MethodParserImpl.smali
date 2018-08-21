.class public Lcom/miui/payment/captor/parser/MethodParserImpl;
.super Ljava/lang/Object;
.source "MethodParserImpl.java"

# interfaces
.implements Lcom/miui/payment/captor/parser/MethodParser;


# instance fields
.field private mMethod:I

.field private mMethodDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/parser/MethodParserImpl;->mMethod:I

    return v0
.end method

.method public getMethodDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/MethodParserImpl;->mMethodDesc:Ljava/lang/String;

    return-object v0
.end method

.method public parseMethod(Lcom/miui/payment/captor/CaptorToken;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/payment/captor/CaptorToken;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.miui.personalassistant"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.taobao.taobao"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.tmall.wireless"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v0, 0xc8

    :goto_0
    iput v0, p0, Lcom/miui/payment/captor/parser/MethodParserImpl;->mMethod:I

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, p3}, Lcom/miui/payment/utils/MethodHelper;->getPresetMethodDesc(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/payment/captor/parser/MethodParserImpl;->mMethodDesc:Ljava/lang/String;

    return-void

    :cond_1
    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x12c

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0xa

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "\u4fe1\u7528\u5361"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x65

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "\u94f6\u884c"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v0, 0x64

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "\u652f\u4ed8\u5b9d"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "\u4f59\u989d\u5b9d"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/16 v0, 0xc8

    goto :goto_0

    :cond_7
    const/16 v0, 0xa

    goto :goto_0
.end method
