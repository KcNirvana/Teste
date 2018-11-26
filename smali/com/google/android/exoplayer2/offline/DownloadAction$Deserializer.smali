.class public abstract Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final type:Ljava/lang/String;

.field public final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;->type:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;->version:I

    return-void
.end method


# virtual methods
.method public abstract readFromStream(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/DownloadAction;
.end method
