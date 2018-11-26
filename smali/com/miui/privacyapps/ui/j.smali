.class final Lcom/miui/privacyapps/ui/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private bbO:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/j;->bbO:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public byp(Lcom/miui/privacyapps/d;Lcom/miui/privacyapps/d;)I
    .locals 3

    invoke-virtual {p1}, Lcom/miui/privacyapps/d;->byL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/privacyapps/d;->byL()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/privacyapps/d;->byL()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/privacyapps/d;->byL()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/privacyapps/ui/j;->bbO:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/miui/privacyapps/d;->byM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/privacyapps/d;->byM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/privacyapps/d;

    check-cast p2, Lcom/miui/privacyapps/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/privacyapps/ui/j;->byp(Lcom/miui/privacyapps/d;Lcom/miui/privacyapps/d;)I

    move-result v0

    return v0
.end method
