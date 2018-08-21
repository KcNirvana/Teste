.class public Lcom/flybird/FBSwitch;
.super Lcom/flybird/FBView;
.source "FBSwitch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FBSwitch"


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private needHandleChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBSwitch;->needHandleChange:Z

    invoke-virtual {p0}, Lcom/flybird/FBSwitch;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/flybird/FBSwitch;->checkBox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBSwitch;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBSwitch;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "onchange"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBSwitch;->needHandleChange:Z

    iget-object v0, p0, Lcom/flybird/FBSwitch;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/flybird/FBSwitch$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBSwitch$1;-><init>(Lcom/flybird/FBSwitch;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateFunc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
