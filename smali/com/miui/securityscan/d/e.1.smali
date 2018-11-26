.class public Lcom/miui/securityscan/d/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Ka:Lcom/miui/appmanager/model/a;

.field private Kb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/appmanager/model/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/d/e;->Kb:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/securityscan/d/e;->Ka:Lcom/miui/appmanager/model/a;

    return-void
.end method

.method static synthetic Lx(Lcom/miui/securityscan/d/e;)Lcom/miui/appmanager/model/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/d/e;->Ka:Lcom/miui/appmanager/model/a;

    return-object v0
.end method

.method static synthetic Ly(Lcom/miui/securityscan/d/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/d/e;->Kb:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/securityscan/d/e;->Kb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/d/e;->Ka:Lcom/miui/appmanager/model/a;

    invoke-virtual {v1}, Lcom/miui/appmanager/model/a;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
