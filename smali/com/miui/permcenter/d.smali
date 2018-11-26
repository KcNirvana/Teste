.class public Lcom/miui/permcenter/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private Rg:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/d;->Rg:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public SD(Lcom/miui/permcenter/c;Lcom/miui/permcenter/c;)I
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/d;->Rg:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/miui/permcenter/c;->Su()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/permcenter/c;->Su()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/permcenter/c;

    check-cast p2, Lcom/miui/permcenter/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/d;->SD(Lcom/miui/permcenter/c;Lcom/miui/permcenter/c;)I

    move-result v0

    return v0
.end method
