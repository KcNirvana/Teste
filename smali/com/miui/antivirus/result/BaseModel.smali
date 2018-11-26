.class public abstract Lcom/miui/antivirus/result/BaseModel;
.super Lcom/miui/antivirus/result/a;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1e64dfc1090cc2eeL


# instance fields
.field protected isBottom:Z

.field protected isTop:Z

.field protected position:I

.field private temporary:Z

.field private testKey:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/miui/antivirus/result/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/BaseModel;->position:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/BaseModel;->temporary:Z

    iput-boolean v1, p0, Lcom/miui/antivirus/result/BaseModel;->isTop:Z

    iput-boolean v1, p0, Lcom/miui/antivirus/result/BaseModel;->isBottom:Z

    sget-object v0, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ame:Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/result/BaseModel;->arP(Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;)V

    return-void
.end method


# virtual methods
.method public asi(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/i;)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/BaseModel;->position:I

    return-void
.end method

.method public atW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/BaseModel;->testKey:Ljava/lang/String;

    return-void
.end method

.method public atX(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/BaseModel;->isTop:Z

    return-void
.end method

.method public atY(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/BaseModel;->isBottom:Z

    return-void
.end method

.method public atZ(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/BaseModel;->temporary:Z

    return-void
.end method

.method public aua()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/BaseModel;->isTop:Z

    return v0
.end method

.method public aub()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/BaseModel;->isBottom:Z

    return v0
.end method

.method public abstract getLayoutId()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
