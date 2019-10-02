.class public Lcom/miui/video/biz/pgc/router/AuthorServiceImpl;
.super Ljava/lang/Object;
.source "AuthorServiceImpl.java"

# interfaces
.implements Lcom/miui/video/base/routers/pgc/PgcService;


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
.method public createAuthorDetailActivity(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "data"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method
