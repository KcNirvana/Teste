.class public Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;
.super Ljava/lang/Object;
.source "ReportFormatRequest.java"


# static fields
.field private static final URL_STYLE:Ljava/lang/String; = "http://api.assistant.miui.com/report/style"


# instance fields
.field private background:Ljava/lang/String;

.field private font:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->font:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->background:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public requestServer()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v0, Lcom/miui/personalassistant/favorite/request/JSONRequest;

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "http://api.assistant.miui.com/report/style"

    invoke-direct {v0, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "url"

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->font:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "front"

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->font:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->background:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "background"

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/request/ReportFormatRequest;->background:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/request/JSONRequest;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
