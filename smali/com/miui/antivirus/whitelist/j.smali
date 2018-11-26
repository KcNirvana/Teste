.class public Lcom/miui/antivirus/whitelist/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aAQ(Lcom/miui/antivirus/whitelist/i;Lcom/miui/antivirus/whitelist/i;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/antivirus/whitelist/i;->aAK()Lcom/miui/antivirus/whitelist/WhiteListType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/antivirus/whitelist/i;->aAK()Lcom/miui/antivirus/whitelist/WhiteListType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/WhiteListType;->ordinal()I

    move-result v2

    invoke-virtual {v1}, Lcom/miui/antivirus/whitelist/WhiteListType;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/WhiteListType;->ordinal()I

    move-result v0

    invoke-virtual {v1}, Lcom/miui/antivirus/whitelist/WhiteListType;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/antivirus/whitelist/i;

    check-cast p2, Lcom/miui/antivirus/whitelist/i;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/whitelist/j;->aAQ(Lcom/miui/antivirus/whitelist/i;Lcom/miui/antivirus/whitelist/i;)I

    move-result v0

    return v0
.end method
