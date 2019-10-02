.class final Lcom/ooyala/pulse/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/AdRequester$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/pulse/j;->a(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/pulse/j;


# direct methods
.method constructor <init>(Lcom/ooyala/pulse/j;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/ooyala/adtech/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    iget-object v0, v0, Lcom/ooyala/pulse/j;->t:Lcom/ooyala/adtech/Error;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ooyala/pulse/j;->s:Z

    iget-object p1, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ooyala/pulse/j;->f:Lcom/ooyala/adtech/Request;

    iget-object p1, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    iget-object p1, p1, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v0, Lcom/ooyala/pulse/j$b;->b:Lcom/ooyala/pulse/j$b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    invoke-static {p1}, Lcom/ooyala/pulse/j;->a(Lcom/ooyala/pulse/j;)V

    :cond_0
    iget-object p1, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    invoke-static {p1}, Lcom/ooyala/pulse/j;->b(Lcom/ooyala/pulse/j;)V

    return-void
.end method

.method public final onSuccess(Lcom/ooyala/adtech/Session;)V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ooyala/pulse/j;->f:Lcom/ooyala/adtech/Request;

    iget-object v0, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    iput-object p1, v0, Lcom/ooyala/pulse/j;->j:Lcom/ooyala/adtech/Session;

    iget-object p1, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    iget-object p1, p1, Lcom/ooyala/pulse/j;->r:Lcom/ooyala/pulse/c;

    iget-object v0, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    iget-object v0, v0, Lcom/ooyala/pulse/j;->j:Lcom/ooyala/adtech/Session;

    invoke-interface {p1, v0}, Lcom/ooyala/pulse/c;->a(Lcom/ooyala/adtech/Session;)V

    iget-object p1, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    iget-object p1, p1, Lcom/ooyala/pulse/j;->g:Lcom/ooyala/pulse/j$b;

    sget-object v0, Lcom/ooyala/pulse/j$b;->b:Lcom/ooyala/pulse/j$b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    invoke-static {p1}, Lcom/ooyala/pulse/j;->a(Lcom/ooyala/pulse/j;)V

    :cond_0
    iget-object p1, p0, Lcom/ooyala/pulse/j$1;->a:Lcom/ooyala/pulse/j;

    invoke-static {p1}, Lcom/ooyala/pulse/j;->b(Lcom/ooyala/pulse/j;)V

    return-void
.end method
