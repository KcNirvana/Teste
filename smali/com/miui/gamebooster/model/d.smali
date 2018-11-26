.class public Lcom/miui/gamebooster/model/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private kQ:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

.field private kR:Lcom/miui/gamebooster/model/a;

.field private kS:Landroid/content/pm/ResolveInfo;

.field private kT:Z

.field private layoutId:I


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;Landroid/content/pm/ResolveInfo;Lcom/miui/gamebooster/model/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/model/d;->kQ:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    iput-object p2, p0, Lcom/miui/gamebooster/model/d;->kS:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/miui/gamebooster/model/d;->kR:Lcom/miui/gamebooster/model/a;

    iput p4, p0, Lcom/miui/gamebooster/model/d;->layoutId:I

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/d;->layoutId:I

    return v0
.end method

.method public mK(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/d;->kT:Z

    return-void
.end method

.method public mL()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/d;->kQ:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    return-object v0
.end method

.method public mM()Lcom/miui/gamebooster/model/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/d;->kR:Lcom/miui/gamebooster/model/a;

    return-object v0
.end method

.method public mN()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/d;->kS:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public mO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/d;->kT:Z

    return v0
.end method
