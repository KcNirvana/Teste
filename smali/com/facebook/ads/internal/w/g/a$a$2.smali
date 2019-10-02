.class Lcom/facebook/ads/internal/w/g/a$a$2;
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
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/facebook/ads/internal/w/g/a$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/w/g/a$a;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/w/g/a$a$2;->b:Lcom/facebook/ads/internal/w/g/a$a;

    iput-object p2, p0, Lcom/facebook/ads/internal/w/g/a$a$2;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/facebook/ads/internal/w/g/a$a$2;->b:Lcom/facebook/ads/internal/w/g/a$a;

    invoke-static {p2}, Lcom/facebook/ads/internal/w/g/a$a;->b(Lcom/facebook/ads/internal/w/g/a$a;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    new-instance v0, Lcom/facebook/ads/internal/w/g/a$a$2$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/w/g/a$a$2$1;-><init>(Lcom/facebook/ads/internal/w/g/a$a$2;Landroid/content/DialogInterface;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
