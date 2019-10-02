.class Lcom/hungama/movies/sdk/d/a$2;
.super Ljava/lang/Object;
.source "CommunicationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/movies/sdk/d/a;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/hungama/movies/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/hungama/movies/sdk/d/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/d/a$2;->b:Lcom/hungama/movies/sdk/d/a;

    iput-object p2, p0, Lcom/hungama/movies/sdk/d/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/d/a$2;->b:Lcom/hungama/movies/sdk/d/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/d/a;->b:Lcom/hungama/movies/sdk/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/d/a$2;->b:Lcom/hungama/movies/sdk/d/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/d/a;->b:Lcom/hungama/movies/sdk/d/b;

    iget-object v1, p0, Lcom/hungama/movies/sdk/d/a$2;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/hungama/movies/sdk/d/b;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
