.class final Lcom/miui/appmanager/ar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private aWX:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ar;->aWX:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bpm(Lcom/miui/appmanager/model/k;Lcom/miui/appmanager/model/k;)I
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/miui/appmanager/model/i;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->bhk()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/appmanager/model/i;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->bhk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/miui/appmanager/model/i;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->bhk()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/miui/appmanager/model/i;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->bhk()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/ar;->aWX:Ljava/text/Collator;

    check-cast p1, Lcom/miui/appmanager/model/i;

    invoke-virtual {p1}, Lcom/miui/appmanager/model/i;->bhf()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/miui/appmanager/model/i;

    invoke-virtual {p2}, Lcom/miui/appmanager/model/i;->bhf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/appmanager/model/k;

    check-cast p2, Lcom/miui/appmanager/model/k;

    invoke-virtual {p0, p1, p2}, Lcom/miui/appmanager/ar;->bpm(Lcom/miui/appmanager/model/k;Lcom/miui/appmanager/model/k;)I

    move-result v0

    return v0
.end method
