.class public Lcom/miui/calendar/util/SimpleProvider$Result;
.super Ljava/lang/Object;
.source "SimpleProvider.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/SimpleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/miui/calendar/util/SimpleProvider$ResultRow;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:I

.field private mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/calendar/util/SimpleProvider$ResultRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/calendar/util/SimpleProvider$Result;)I
    .locals 1

    iget v0, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/calendar/util/SimpleProvider$Result;I)I
    .locals 0

    iput p1, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mCount:I

    return p1
.end method

.method public static create()Lcom/miui/calendar/util/SimpleProvider$Result;
    .locals 3

    new-instance v0, Lcom/miui/calendar/util/SimpleProvider$Result;

    invoke-direct {v0}, Lcom/miui/calendar/util/SimpleProvider$Result;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/miui/calendar/util/SimpleProvider$Result;->mRows:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addRow(Lcom/miui/calendar/util/SimpleProvider$ResultRow;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mCount:I

    return-void
.end method

.method public getRow()Lcom/miui/calendar/util/SimpleProvider$ResultRow;
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mRows:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;

    return-object v0
.end method

.method public getRow(I)Lcom/miui/calendar/util/SimpleProvider$ResultRow;
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/calendar/util/SimpleProvider$ResultRow;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mRows:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/miui/calendar/util/SimpleProvider$ResultRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/util/SimpleProvider$Result;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
