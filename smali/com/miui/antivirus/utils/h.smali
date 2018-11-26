.class public Lcom/miui/antivirus/utils/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aoD:Z

.field private aoE:Ljava/util/TreeMap;

.field final synthetic this$0:Lcom/miui/antivirus/utils/g;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/utils/g;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/utils/h;-><init>(Lcom/miui/antivirus/utils/g;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/antivirus/utils/g;Z)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/miui/antivirus/utils/h;->this$0:Lcom/miui/antivirus/utils/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/miui/antivirus/utils/h;->aoD:Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/utils/h;->aoE:Ljava/util/TreeMap;

    iput-boolean v1, p0, Lcom/miui/antivirus/utils/h;->aoD:Z

    if-eqz p2, :cond_0

    iput-object p0, p1, Lcom/miui/antivirus/utils/g;->aop:Lcom/miui/antivirus/utils/h;

    :cond_0
    return-void
.end method


# virtual methods
.method public auT(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/antivirus/utils/h;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/antivirus/utils/h;->aoD:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p2, ""

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/utils/h;->aoE:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public auU()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/utils/h;->auV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public auV(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/utils/h;->aoE:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/utils/h;->aoE:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/utils/h;->aoE:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v0, v1, p1}, Lcom/miui/antivirus/utils/g;->auS(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public auW(C)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/utils/h;->aoE:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/utils/h;->aoE:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/utils/h;->aoE:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v0, v1, p1}, Lcom/miui/antivirus/utils/g;->auR(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/utils/h;->aoE:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/utils/h;->auW(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
