.class public Lcom/miui/permcenter/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Rb:Z

.field private Rc:Z

.field private Rd:Z

.field private Re:Ljava/lang/String;

.field private Rf:Ljava/util/HashMap;

.field private count:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SA(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/c;->Rc:Z

    return-void
.end method

.method public SB(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/c;->Rf:Ljava/util/HashMap;

    return-void
.end method

.method public SC(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/c;->Rd:Z

    return-void
.end method

.method public St()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/c;->Rf:Ljava/util/HashMap;

    return-object v0
.end method

.method public Su()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/c;->Re:Ljava/lang/String;

    return-object v0
.end method

.method public Sv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/c;->Rb:Z

    return v0
.end method

.method public Sw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/c;->Rc:Z

    return v0
.end method

.method public Sx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/c;->Rd:Z

    return v0
.end method

.method public Sy(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/c;->count:I

    return-void
.end method

.method public Sz(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/c;->Rb:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/c;->count:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/c;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/c;->Re:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/c;->packageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppPermissionInfo [packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/c;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/c;->Re:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
