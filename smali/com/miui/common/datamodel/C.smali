.class final Lcom/miui/common/datamodel/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aBl:Lcom/miui/common/datamodel/z;


# direct methods
.method constructor <init>(Lcom/miui/common/datamodel/z;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/C;->aBl:Lcom/miui/common/datamodel/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
