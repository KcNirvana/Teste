.class public abstract Lcom/miui/gamebooster/top/BaseModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/io/Serializable;


# instance fields
.field protected context:Landroid/content/Context;

.field protected position:I

.field private testKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gamebooster/top/BaseModel;->position:I

    return-void
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public sW(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/top/a;)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/top/BaseModel;->position:I

    iput-object p3, p0, Lcom/miui/gamebooster/top/BaseModel;->context:Landroid/content/Context;

    return-void
.end method

.method public sX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/top/BaseModel;->testKey:Ljava/lang/String;

    return-void
.end method
