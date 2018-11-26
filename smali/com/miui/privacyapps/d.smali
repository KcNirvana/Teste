.class public Lcom/miui/privacyapps/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bcj:Z

.field private bck:Ljava/lang/String;

.field private bcl:I

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/privacyapps/d;->bcj:Z

    return v0
.end method

.method public byM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/d;->bck:Ljava/lang/String;

    return-object v0
.end method

.method public byN()I
    .locals 1

    iget v0, p0, Lcom/miui/privacyapps/d;->bcl:I

    return v0
.end method

.method public byO(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/privacyapps/d;->bcj:Z

    return-void
.end method

.method public byP(I)V
    .locals 0

    iput p1, p0, Lcom/miui/privacyapps/d;->bcl:I

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/d;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/miui/privacyapps/d;->mUid:I

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/d;->bck:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/d;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/miui/privacyapps/d;->mUid:I

    return-void
.end method
