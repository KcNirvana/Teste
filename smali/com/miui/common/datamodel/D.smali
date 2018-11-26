.class final Lcom/miui/common/datamodel/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aBm:Lcom/miui/common/datamodel/z;


# direct methods
.method constructor <init>(Lcom/miui/common/datamodel/z;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/D;->aBm:Lcom/miui/common/datamodel/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/BaseModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/common/datamodel/BaseModel;->onClick(Landroid/view/View;)V

    return-void
.end method
