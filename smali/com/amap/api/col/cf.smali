.class Lcom/amap/api/col/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/amap/api/col/cd;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cf;->a:Lcom/amap/api/col/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cf;->a:Lcom/amap/api/col/cd;

    invoke-static {v0}, Lcom/amap/api/col/cd;->b(Lcom/amap/api/col/cd;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
