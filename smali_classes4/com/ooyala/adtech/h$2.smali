.class final Lcom/ooyala/adtech/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/AdRequester$AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/h;->a(Ljava/util/List;ILcom/ooyala/adtech/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/ooyala/adtech/h$b;

.field final synthetic d:Lcom/ooyala/adtech/h;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/h;ILjava/util/List;Lcom/ooyala/adtech/h$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/h$2;->d:Lcom/ooyala/adtech/h;

    iput p2, p0, Lcom/ooyala/adtech/h$2;->a:I

    iput-object p3, p0, Lcom/ooyala/adtech/h$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/ooyala/adtech/h$2;->c:Lcom/ooyala/adtech/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/ooyala/adtech/Error;)V
    .locals 3

    iget v0, p0, Lcom/ooyala/adtech/h$2;->a:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ooyala/adtech/h$2;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/ooyala/adtech/h$2;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ooyala/adtech/Ad;

    invoke-static {v2}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/adtech/h$2;->c:Lcom/ooyala/adtech/h$b;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/h$b;->a(Lcom/ooyala/adtech/Error;)V

    return-void
.end method

.method public final onSuccess(Lcom/ooyala/adtech/Ad;)V
    .locals 3

    iget p1, p0, Lcom/ooyala/adtech/h$2;->a:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/ooyala/adtech/h$2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/ooyala/adtech/h$2;->c:Lcom/ooyala/adtech/h$b;

    invoke-interface {p1}, Lcom/ooyala/adtech/h$b;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ooyala/adtech/h$2;->d:Lcom/ooyala/adtech/h;

    iget-object v0, p0, Lcom/ooyala/adtech/h$2;->b:Ljava/util/List;

    iget v1, p0, Lcom/ooyala/adtech/h$2;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ooyala/adtech/h$2;->c:Lcom/ooyala/adtech/h$b;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ooyala/adtech/h;->a(Ljava/util/List;ILcom/ooyala/adtech/h$b;)V

    return-void
.end method
