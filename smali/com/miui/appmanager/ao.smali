.class final Lcom/miui/appmanager/ao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private aWU:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ao;->aWU:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bpj(Lcom/miui/appmanager/model/k;Lcom/miui/appmanager/model/k;)I
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/ao;->aWU:Ljava/text/Collator;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/appmanager/ao;->bpj(Lcom/miui/appmanager/model/k;Lcom/miui/appmanager/model/k;)I

    move-result v0

    return v0
.end method
