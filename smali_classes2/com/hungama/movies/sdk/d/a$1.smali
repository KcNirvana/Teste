.class Lcom/hungama/movies/sdk/d/a$1;
.super Ljava/lang/Object;
.source "CommunicationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/movies/sdk/d/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/movies/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/hungama/movies/sdk/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/d/a$1;->a:Lcom/hungama/movies/sdk/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/d/a$1;->a:Lcom/hungama/movies/sdk/d/a;

    iget-object v1, p0, Lcom/hungama/movies/sdk/d/a$1;->a:Lcom/hungama/movies/sdk/d/a;

    iget-object v2, p0, Lcom/hungama/movies/sdk/d/a$1;->a:Lcom/hungama/movies/sdk/d/a;

    invoke-static {v2}, Lcom/hungama/movies/sdk/d/a;->a(Lcom/hungama/movies/sdk/d/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hungama/movies/sdk/d/a;->a(Lcom/hungama/movies/sdk/d/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/d/a;->b(Ljava/lang/String;)V

    return-void
.end method
