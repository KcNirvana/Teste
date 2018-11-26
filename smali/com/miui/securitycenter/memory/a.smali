.class public Lcom/miui/securitycenter/memory/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aXs:Z

.field private aXt:Landroid/util/SparseBooleanArray;

.field private aXu:J

.field private aXv:Ljava/lang/String;

.field private aXw:I

.field private appName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bpA()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securitycenter/memory/a;->aXu:J

    return-wide v0
.end method

.method public bpB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/memory/a;->aXv:Ljava/lang/String;

    return-object v0
.end method

.method public bpC()I
    .locals 1

    iget v0, p0, Lcom/miui/securitycenter/memory/a;->aXw:I

    return v0
.end method

.method public bpD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/memory/a;->appName:Ljava/lang/String;

    return-void
.end method

.method public bpE(Landroid/util/SparseBooleanArray;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/memory/a;->aXt:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public bpF(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/securitycenter/memory/a;->aXu:J

    return-void
.end method

.method public bpG(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/memory/a;->aXv:Ljava/lang/String;

    return-void
.end method

.method public bpH(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securitycenter/memory/a;->aXw:I

    return-void
.end method

.method public bpz()Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/memory/a;->aXt:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/memory/a;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securitycenter/memory/a;->aXs:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/memory/a;->aXs:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/memory/a;->packageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MemoryModel2 [appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/memory/a;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/memory/a;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", memorySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/securitycenter/memory/a;->aXu:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/memory/a;->aXt:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/securitycenter/memory/a;->aXw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/securitycenter/memory/a;->aXs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uniqueKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/memory/a;->aXv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
