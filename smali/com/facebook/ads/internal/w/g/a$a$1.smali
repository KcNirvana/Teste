.class Lcom/facebook/ads/internal/w/g/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/w/g/a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/w/g/a$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/w/g/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/w/g/a$a$1;->a:Lcom/facebook/ads/internal/w/g/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
