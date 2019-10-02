.class final Lcom/ooyala/adtech/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/h;-><init>(Lcom/ooyala/adtech/Session;Lcom/ooyala/adtech/AdRequester$SessionListener;Lcom/ooyala/adtech/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/AdRequester$SessionListener;

.field final synthetic b:Lcom/ooyala/adtech/Session;

.field final synthetic c:Lcom/ooyala/adtech/h;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/h;Lcom/ooyala/adtech/AdRequester$SessionListener;Lcom/ooyala/adtech/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/h$1;->c:Lcom/ooyala/adtech/h;

    iput-object p2, p0, Lcom/ooyala/adtech/h$1;->a:Lcom/ooyala/adtech/AdRequester$SessionListener;

    iput-object p3, p0, Lcom/ooyala/adtech/h$1;->b:Lcom/ooyala/adtech/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/h$1;->a:Lcom/ooyala/adtech/AdRequester$SessionListener;

    iget-object v1, p0, Lcom/ooyala/adtech/h$1;->b:Lcom/ooyala/adtech/Session;

    invoke-interface {v0, v1}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onSuccess(Lcom/ooyala/adtech/Session;)V

    return-void
.end method

.method public final a(Lcom/ooyala/adtech/Error;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/h$1;->a:Lcom/ooyala/adtech/AdRequester$SessionListener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/AdRequester$SessionListener;->onFailure(Lcom/ooyala/adtech/Error;)V

    return-void
.end method
