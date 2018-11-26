.class public abstract Lcom/miui/gamebooster/gamead/BaseModel;
.super Lcom/miui/antivirus/result/a;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1e64dfc1090cc2eeL


# instance fields
.field protected position:I

.field private temporary:Z

.field private testKey:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gamebooster/gamead/BaseModel;->position:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/BaseModel;->temporary:Z

    sget-object v0, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ame:Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gamead/BaseModel;->arP(Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;)V

    return-void
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/gamead/BaseModel;->position:I

    return-void
.end method

.method public ls(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gamead/BaseModel;->testKey:Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
