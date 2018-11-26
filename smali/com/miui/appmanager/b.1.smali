.class public Lcom/miui/appmanager/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aRT:Ljava/lang/StringBuffer;

.field aRU:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/b;->aRT:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/b;->aRU:Ljava/lang/StringBuffer;

    return-void
.end method
