.class public Lcom/hungama/movies/sdk/a$b;
.super Landroid/content/BroadcastReceiver;
.source "HungamaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hungama/movies/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/movies/sdk/a;


# direct methods
.method public constructor <init>(Lcom/hungama/movies/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a$b;->a:Lcom/hungama/movies/sdk/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/hungama/movies/sdk/a$b;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {p1}, Lcom/hungama/movies/sdk/a;->g(Lcom/hungama/movies/sdk/a;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkStateChangeReceiver"

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a$b;->a:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/hungama/movies/sdk/a$b;->a:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/b;->v()V

    const-string p1, "info"

    const-string p2, "NetworkUtils changed= "

    invoke-static {p1, p2}, Lcom/hungama/movies/sdk/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
