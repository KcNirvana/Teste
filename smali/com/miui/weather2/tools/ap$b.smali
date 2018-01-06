.class Lcom/miui/weather2/tools/ap$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/tools/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/weather2/tools/ap$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/weather2/tools/ap$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/weather2/tools/ap$b;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/miui/weather2/tools/ap$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ap$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/weather2/tools/ap$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ap$b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/miui/weather2/tools/ap$b;)I
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/tools/ap$b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/weather2/tools/ap$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/weather2/tools/ap$b;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/tools/ap$b;->a(Lcom/miui/weather2/tools/ap$b;)I

    move-result v0

    return v0
.end method
