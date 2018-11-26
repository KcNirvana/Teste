.class public Lcom/miui/antivirus/model/c;
.super Lcom/miui/antivirus/model/b;
.source ""


# instance fields
.field private alu:Z

.field private alv:Z


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/model/AppModel$CardType;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/model/b;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/model/c;->akR:Lcom/miui/antivirus/model/AppModel$CardType;

    sget-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->alm:Lcom/miui/antivirus/model/AppModel$AppGroup;

    iput-object v0, p0, Lcom/miui/antivirus/model/c;->akQ:Lcom/miui/antivirus/model/AppModel$AppGroup;

    return-void
.end method


# virtual methods
.method public aqY(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/c;->alv:Z

    return-void
.end method

.method public aqZ(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/c;->alu:Z

    return-void
.end method

.method public ara()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/c;->alv:Z

    return v0
.end method

.method public arb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/c;->alu:Z

    return v0
.end method
