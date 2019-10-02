.class public Lcom/miui/video/biz/history/router/HistoryServiceImpl;
.super Ljava/lang/Object;
.source "HistoryServiceImpl.java"

# interfaces
.implements Lcom/miui/video/base/routers/personal/history/HistoryService;


# annotations
.annotation build Lio/github/prototypez/appjoint/core/ServiceProvider;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startHistoryActivity(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
