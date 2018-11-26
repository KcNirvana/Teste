.class public abstract Lcom/miui/common/datamodel/BaseModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1e64dfc1090cc2eeL


# instance fields
.field protected listAdapter:Lcom/miui/common/datamodel/z;

.field protected position:I

.field protected testKey:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/common/datamodel/BaseModel;->position:I

    return-void
.end method


# virtual methods
.method public aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V
    .locals 0

    iput p1, p0, Lcom/miui/common/datamodel/BaseModel;->position:I

    iput-object p4, p0, Lcom/miui/common/datamodel/BaseModel;->listAdapter:Lcom/miui/common/datamodel/z;

    return-void
.end method

.method public aKd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/BaseModel;->testKey:Ljava/lang/String;

    return-void
.end method

.method public abstract getLayoutId()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
