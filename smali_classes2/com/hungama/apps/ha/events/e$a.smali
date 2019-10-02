.class public Lcom/hungama/apps/ha/events/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hungama/apps/ha/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hungama/apps/ha/events/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/hungama/apps/ha/events/e;


# direct methods
.method private constructor <init>(Lcom/hungama/apps/ha/events/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/events/e$a;->b:Lcom/hungama/apps/ha/events/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/hungama/apps/ha/events/e$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/hungama/apps/ha/events/e;ILcom/hungama/apps/ha/events/e$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hungama/apps/ha/events/e$a;-><init>(Lcom/hungama/apps/ha/events/e;I)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hungama/apps/ha/e/h;
        }
    .end annotation

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
