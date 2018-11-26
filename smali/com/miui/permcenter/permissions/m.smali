.class public Lcom/miui/permcenter/permissions/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private PA:Ljava/text/Collator;

.field private PB:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/m;->PA:Ljava/text/Collator;

    iput-wide p1, p0, Lcom/miui/permcenter/permissions/m;->PB:J

    return-void
.end method


# virtual methods
.method public Qw(Lcom/miui/permcenter/c;Lcom/miui/permcenter/c;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/permcenter/permissions/m;->PB:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/permcenter/permissions/m;->PB:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/m;->PA:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/miui/permcenter/c;->Su()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/permcenter/c;->Su()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/permcenter/c;

    check-cast p2, Lcom/miui/permcenter/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/m;->Qw(Lcom/miui/permcenter/c;Lcom/miui/permcenter/c;)I

    move-result v0

    return v0
.end method
