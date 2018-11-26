.class final Lcom/miui/antispam/ui/activity/T;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic Vc:Lcom/miui/antispam/ui/activity/k;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/T;->Vc:Lcom/miui/antispam/ui/activity/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vf(Lcom/miui/antispam/util/j;Lcom/miui/antispam/util/j;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-object v0, p1, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    const-string/jumbo v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    const-string/jumbo v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    iget-object v1, p2, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    return v3

    :cond_1
    iget-object v0, p1, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    const-string/jumbo v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p2, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    iget-object v1, p2, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_3
    return v3

    :cond_4
    iget-object v0, p2, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    const-string/jumbo v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    iget-object v1, p2, Lcom/miui/antispam/util/j;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_5
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/antispam/util/j;

    check-cast p2, Lcom/miui/antispam/util/j;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/activity/T;->Vf(Lcom/miui/antispam/util/j;Lcom/miui/antispam/util/j;)I

    move-result v0

    return v0
.end method
