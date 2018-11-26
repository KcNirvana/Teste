.class final Lcom/miui/optimizemanage/optimizeresult/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic xj:Lcom/miui/optimizemanage/optimizeresult/p;

.field final synthetic xk:Lcom/miui/optimizemanage/optimizeresult/o;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/optimizeresult/p;Lcom/miui/optimizemanage/optimizeresult/o;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/t;->xj:Lcom/miui/optimizemanage/optimizeresult/p;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/t;->xk:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/t;->xk:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/o;->onClick(Landroid/view/View;)V

    return-void
.end method
