.class public abstract Lcom/miui/home/launcher/assistant/util/SQLiteAsyncQuery;
.super Ljava/lang/Object;
.source "SQLiteAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")TA;"
        }
    .end annotation
.end method

.method public run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/assistant/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/miui/home/launcher/assistant/util/Consumer",
            "<TA;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/util/SQLiteAsyncQuery;->performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/home/launcher/assistant/util/Consumer;->consume(Ljava/lang/Object;)Z

    return-void
.end method
