.class public Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;
.super Lcom/miui/securitycenter/memory/MemoryModel;
.source ""


# instance fields
.field private Ei:Ljava/util/List;

.field private Ej:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securitycenter/memory/MemoryModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->Ei:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Gm(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->Ei:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->Ej:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->Ej:Z

    return-void
.end method
