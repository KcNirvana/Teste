.class Lcom/amap/api/col/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/amap/api/col/cd;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cg;->a:Lcom/amap/api/col/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
