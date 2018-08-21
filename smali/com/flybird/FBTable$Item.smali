.class public final Lcom/flybird/FBTable$Item;
.super Ljava/lang/Object;
.source "FBTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flybird/FBTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field public model:Lorg/json/JSONObject;

.field public row:I

.field public section:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flybird/FBTable$Item;->model:Lorg/json/JSONObject;

    iput p2, p0, Lcom/flybird/FBTable$Item;->section:I

    iput p3, p0, Lcom/flybird/FBTable$Item;->row:I

    return-void
.end method
