package io.lindstrom.m3u8.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import javax.annotation.Generated;

/**
 * Builds instances of type {@link MediaPlaylist MediaPlaylist}.
 * Initialize attributes and then invoke the {@link #build()} method to create an
 * immutable instance.
 * <p><em>{@code MediaPlaylistBuilder} is not thread-safe and generally should not be stored in a field or collection,
 * but instead used immediately to create instances.</em>
 */
@SuppressWarnings({"all"})
@Generated({"Immutables.generator", "MediaPlaylist"})
class MediaPlaylistBuilder {
  private static final long INIT_BIT_TARGET_DURATION = 0x1L;
  private static final long OPT_BIT_MEDIA_SEQUENCE = 0x1L;
  private static final long OPT_BIT_ONGOING = 0x2L;
  private static final long OPT_BIT_I_FRAMES_ONLY = 0x4L;
  private static final long OPT_BIT_INDEPENDENT_SEGMENTS = 0x8L;
  private long initBits = 0x1L;
  private long optBits;

  private int targetDuration;
  private int mediaSequence;
  private boolean ongoing;
  private PlaylistType playlistType;
  private boolean iFramesOnly;
  private List<MediaSegment> mediaSegments = new ArrayList<MediaSegment>();
  private Integer version;
  private boolean independentSegments;

  /**
   * Creates a builder for {@link MediaPlaylist MediaPlaylist} instances.
   */
  MediaPlaylistBuilder() {
    if (!(this instanceof MediaPlaylist.Builder)) {
      throw new UnsupportedOperationException("Use: new MediaPlaylist.Builder()");
    }
  }

  /**
   * Fill a builder with attribute values from the provided {@code io.lindstrom.m3u8.model.Playlist} instance.
   * @param instance The instance from which to copy values
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder from(Playlist instance) {
    Objects.requireNonNull(instance, "instance");
    from((Object) instance);
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Fill a builder with attribute values from the provided {@code io.lindstrom.m3u8.model.MediaPlaylist} instance.
   * @param instance The instance from which to copy values
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder from(MediaPlaylist instance) {
    Objects.requireNonNull(instance, "instance");
    from((Object) instance);
    return (MediaPlaylist.Builder) this;
  }

  private void from(Object object) {
    if (object instanceof Playlist) {
      Playlist instance = (Playlist) object;
      independentSegments(instance.independentSegments());
      Optional<Integer> versionOptional = instance.version();
      if (versionOptional.isPresent()) {
        version(versionOptional);
      }
    }
    if (object instanceof MediaPlaylist) {
      MediaPlaylist instance = (MediaPlaylist) object;
      addAllMediaSegments(instance.mediaSegments());
      Optional<PlaylistType> playlistTypeOptional = instance.playlistType();
      if (playlistTypeOptional.isPresent()) {
        playlistType(playlistTypeOptional);
      }
      targetDuration(instance.targetDuration());
      ongoing(instance.ongoing());
      iFramesOnly(instance.iFramesOnly());
      mediaSequence(instance.mediaSequence());
    }
  }

  /**
   * Initializes the value for the {@link MediaPlaylist#targetDuration() targetDuration} attribute.
   * @param targetDuration The value for targetDuration 
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder targetDuration(int targetDuration) {
    this.targetDuration = targetDuration;
    initBits &= ~INIT_BIT_TARGET_DURATION;
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Initializes the value for the {@link MediaPlaylist#mediaSequence() mediaSequence} attribute.
   * <p><em>If not set, this attribute will have a default value as returned by the initializer of {@link MediaPlaylist#mediaSequence() mediaSequence}.</em>
   * @param mediaSequence The value for mediaSequence 
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder mediaSequence(int mediaSequence) {
    this.mediaSequence = mediaSequence;
    optBits |= OPT_BIT_MEDIA_SEQUENCE;
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Initializes the value for the {@link MediaPlaylist#ongoing() ongoing} attribute.
   * <p><em>If not set, this attribute will have a default value as returned by the initializer of {@link MediaPlaylist#ongoing() ongoing}.</em>
   * @param ongoing The value for ongoing 
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder ongoing(boolean ongoing) {
    this.ongoing = ongoing;
    optBits |= OPT_BIT_ONGOING;
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaPlaylist#playlistType() playlistType} to playlistType.
   * @param playlistType The value for playlistType
   * @return {@code this} builder for chained invocation
   */
  public final MediaPlaylist.Builder playlistType(PlaylistType playlistType) {
    this.playlistType = Objects.requireNonNull(playlistType, "playlistType");
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaPlaylist#playlistType() playlistType} to playlistType.
   * @param playlistType The value for playlistType
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder playlistType(Optional<? extends PlaylistType> playlistType) {
    this.playlistType = playlistType.orElse(null);
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Initializes the value for the {@link MediaPlaylist#iFramesOnly() iFramesOnly} attribute.
   * <p><em>If not set, this attribute will have a default value as returned by the initializer of {@link MediaPlaylist#iFramesOnly() iFramesOnly}.</em>
   * @param iFramesOnly The value for iFramesOnly 
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder iFramesOnly(boolean iFramesOnly) {
    this.iFramesOnly = iFramesOnly;
    optBits |= OPT_BIT_I_FRAMES_ONLY;
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Adds one element to {@link MediaPlaylist#mediaSegments() mediaSegments} list.
   * @param element A mediaSegments element
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder addMediaSegments(MediaSegment element) {
    this.mediaSegments.add(Objects.requireNonNull(element, "mediaSegments element"));
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Adds elements to {@link MediaPlaylist#mediaSegments() mediaSegments} list.
   * @param elements An array of mediaSegments elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder addMediaSegments(MediaSegment... elements) {
    for (MediaSegment element : elements) {
      this.mediaSegments.add(Objects.requireNonNull(element, "mediaSegments element"));
    }
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Sets or replaces all elements for {@link MediaPlaylist#mediaSegments() mediaSegments} list.
   * @param elements An iterable of mediaSegments elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder mediaSegments(Iterable<? extends MediaSegment> elements) {
    this.mediaSegments.clear();
    return addAllMediaSegments(elements);
  }

  /**
   * Adds elements to {@link MediaPlaylist#mediaSegments() mediaSegments} list.
   * @param elements An iterable of mediaSegments elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder addAllMediaSegments(Iterable<? extends MediaSegment> elements) {
    for (MediaSegment element : elements) {
      this.mediaSegments.add(Objects.requireNonNull(element, "mediaSegments element"));
    }
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaPlaylist#version() version} to version.
   * @param version The value for version
   * @return {@code this} builder for chained invocation
   */
  public final MediaPlaylist.Builder version(int version) {
    this.version = version;
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Initializes the optional value {@link MediaPlaylist#version() version} to version.
   * @param version The value for version
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder version(Optional<Integer> version) {
    this.version = version.orElse(null);
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Initializes the value for the {@link MediaPlaylist#independentSegments() independentSegments} attribute.
   * <p><em>If not set, this attribute will have a default value as returned by the initializer of {@link MediaPlaylist#independentSegments() independentSegments}.</em>
   * @param independentSegments The value for independentSegments 
   * @return {@code this} builder for use in a chained invocation
   */
  public final MediaPlaylist.Builder independentSegments(boolean independentSegments) {
    this.independentSegments = independentSegments;
    optBits |= OPT_BIT_INDEPENDENT_SEGMENTS;
    return (MediaPlaylist.Builder) this;
  }

  /**
   * Builds a new {@link MediaPlaylist MediaPlaylist}.
   * @return An immutable instance of MediaPlaylist
   * @throws java.lang.IllegalStateException if any required attributes are missing
   */
  public MediaPlaylist build() {
    if (initBits != 0) {
      throw new IllegalStateException(formatRequiredAttributesMessage());
    }
    return new MediaPlaylistBuilder.ImmutableMediaPlaylist(this);
  }

  private boolean mediaSequenceIsSet() {
    return (optBits & OPT_BIT_MEDIA_SEQUENCE) != 0;
  }

  private boolean ongoingIsSet() {
    return (optBits & OPT_BIT_ONGOING) != 0;
  }

  private boolean iFramesOnlyIsSet() {
    return (optBits & OPT_BIT_I_FRAMES_ONLY) != 0;
  }

  private boolean independentSegmentsIsSet() {
    return (optBits & OPT_BIT_INDEPENDENT_SEGMENTS) != 0;
  }

  private String formatRequiredAttributesMessage() {
    List<String> attributes = new ArrayList<String>();
    if ((initBits & INIT_BIT_TARGET_DURATION) != 0) attributes.add("targetDuration");
    return "Cannot build MediaPlaylist, some of required attributes are not set " + attributes;
  }

  /**
   * Immutable implementation of {@link MediaPlaylist}.
   * <p>
   * Use the builder to create immutable instances:
   * {@code new MediaPlaylist.Builder()}.
   */
  private static final class ImmutableMediaPlaylist implements MediaPlaylist {
    private final int targetDuration;
    private final int mediaSequence;
    private final boolean ongoing;
    private final PlaylistType playlistType;
    private final boolean iFramesOnly;
    private final List<MediaSegment> mediaSegments;
    private final Integer version;
    private final boolean independentSegments;

    private ImmutableMediaPlaylist(MediaPlaylistBuilder builder) {
      this.targetDuration = builder.targetDuration;
      this.playlistType = builder.playlistType;
      this.mediaSegments = createUnmodifiableList(true, builder.mediaSegments);
      this.version = builder.version;
      if (builder.mediaSequenceIsSet()) {
        initShim.mediaSequence(builder.mediaSequence);
      }
      if (builder.ongoingIsSet()) {
        initShim.ongoing(builder.ongoing);
      }
      if (builder.iFramesOnlyIsSet()) {
        initShim.iFramesOnly(builder.iFramesOnly);
      }
      if (builder.independentSegmentsIsSet()) {
        initShim.independentSegments(builder.independentSegments);
      }
      this.mediaSequence = initShim.mediaSequence();
      this.ongoing = initShim.ongoing();
      this.iFramesOnly = initShim.iFramesOnly();
      this.independentSegments = initShim.independentSegments();
      this.initShim = null;
    }

    private static final int STAGE_INITIALIZING = -1;
    private static final int STAGE_UNINITIALIZED = 0;
    private static final int STAGE_INITIALIZED = 1;
    private transient volatile InitShim initShim = new InitShim();

    private final class InitShim {
      private int mediaSequence;
      private int mediaSequenceBuildStage;

      int mediaSequence() {
        if (mediaSequenceBuildStage == STAGE_INITIALIZING) throw new IllegalStateException(formatInitCycleMessage());
        if (mediaSequenceBuildStage == STAGE_UNINITIALIZED) {
          mediaSequenceBuildStage = STAGE_INITIALIZING;
          this.mediaSequence = mediaSequenceInitialize();
          mediaSequenceBuildStage = STAGE_INITIALIZED;
        }
        return this.mediaSequence;
      }

      void mediaSequence(int mediaSequence) {
        this.mediaSequence = mediaSequence;
        mediaSequenceBuildStage = STAGE_INITIALIZED;
      }
      private boolean ongoing;
      private int ongoingBuildStage;

      boolean ongoing() {
        if (ongoingBuildStage == STAGE_INITIALIZING) throw new IllegalStateException(formatInitCycleMessage());
        if (ongoingBuildStage == STAGE_UNINITIALIZED) {
          ongoingBuildStage = STAGE_INITIALIZING;
          this.ongoing = ongoingInitialize();
          ongoingBuildStage = STAGE_INITIALIZED;
        }
        return this.ongoing;
      }

      void ongoing(boolean ongoing) {
        this.ongoing = ongoing;
        ongoingBuildStage = STAGE_INITIALIZED;
      }
      private boolean iFramesOnly;
      private int iFramesOnlyBuildStage;

      boolean iFramesOnly() {
        if (iFramesOnlyBuildStage == STAGE_INITIALIZING) throw new IllegalStateException(formatInitCycleMessage());
        if (iFramesOnlyBuildStage == STAGE_UNINITIALIZED) {
          iFramesOnlyBuildStage = STAGE_INITIALIZING;
          this.iFramesOnly = iFramesOnlyInitialize();
          iFramesOnlyBuildStage = STAGE_INITIALIZED;
        }
        return this.iFramesOnly;
      }

      void iFramesOnly(boolean iFramesOnly) {
        this.iFramesOnly = iFramesOnly;
        iFramesOnlyBuildStage = STAGE_INITIALIZED;
      }
      private boolean independentSegments;
      private int independentSegmentsBuildStage;

      boolean independentSegments() {
        if (independentSegmentsBuildStage == STAGE_INITIALIZING) throw new IllegalStateException(formatInitCycleMessage());
        if (independentSegmentsBuildStage == STAGE_UNINITIALIZED) {
          independentSegmentsBuildStage = STAGE_INITIALIZING;
          this.independentSegments = independentSegmentsInitialize();
          independentSegmentsBuildStage = STAGE_INITIALIZED;
        }
        return this.independentSegments;
      }

      void independentSegments(boolean independentSegments) {
        this.independentSegments = independentSegments;
        independentSegmentsBuildStage = STAGE_INITIALIZED;
      }

      private String formatInitCycleMessage() {
        ArrayList<String> attributes = new ArrayList<String>();
        if (mediaSequenceBuildStage == STAGE_INITIALIZING) attributes.add("mediaSequence");
        if (ongoingBuildStage == STAGE_INITIALIZING) attributes.add("ongoing");
        if (iFramesOnlyBuildStage == STAGE_INITIALIZING) attributes.add("iFramesOnly");
        if (independentSegmentsBuildStage == STAGE_INITIALIZING) attributes.add("independentSegments");
        return "Cannot build MediaPlaylist, attribute initializers form cycle" + attributes;
      }
    }

    private int mediaSequenceInitialize() {
      return MediaPlaylist.super.mediaSequence();
    }

    private boolean ongoingInitialize() {
      return MediaPlaylist.super.ongoing();
    }

    private boolean iFramesOnlyInitialize() {
      return MediaPlaylist.super.iFramesOnly();
    }

    private boolean independentSegmentsInitialize() {
      return MediaPlaylist.super.independentSegments();
    }

    /**
     * @return The value of the {@code targetDuration} attribute
     */
    @Override
    public int targetDuration() {
      return targetDuration;
    }

    /**
     * @return The value of the {@code mediaSequence} attribute
     */
    @Override
    public int mediaSequence() {
      InitShim shim = this.initShim;
      return shim != null
          ? shim.mediaSequence()
          : this.mediaSequence;
    }

    /**
     * @return The value of the {@code ongoing} attribute
     */
    @Override
    public boolean ongoing() {
      InitShim shim = this.initShim;
      return shim != null
          ? shim.ongoing()
          : this.ongoing;
    }

    /**
     * @return The value of the {@code playlistType} attribute
     */
    @Override
    public Optional<PlaylistType> playlistType() {
      return Optional.ofNullable(playlistType);
    }

    /**
     * @return The value of the {@code iFramesOnly} attribute
     */
    @Override
    public boolean iFramesOnly() {
      InitShim shim = this.initShim;
      return shim != null
          ? shim.iFramesOnly()
          : this.iFramesOnly;
    }

    /**
     * @return The value of the {@code mediaSegments} attribute
     */
    @Override
    public List<MediaSegment> mediaSegments() {
      return mediaSegments;
    }

    /**
     * @return The value of the {@code version} attribute
     */
    @Override
    public Optional<Integer> version() {
      return Optional.ofNullable(version);
    }

    /**
     * @return The value of the {@code independentSegments} attribute
     */
    @Override
    public boolean independentSegments() {
      InitShim shim = this.initShim;
      return shim != null
          ? shim.independentSegments()
          : this.independentSegments;
    }

    /**
     * This instance is equal to all instances of {@code ImmutableMediaPlaylist} that have equal attribute values.
     * @return {@code true} if {@code this} is equal to {@code another} instance
     */
    @Override
    public boolean equals(Object another) {
      if (this == another) return true;
      return another instanceof MediaPlaylistBuilder.ImmutableMediaPlaylist
          && equalTo((MediaPlaylistBuilder.ImmutableMediaPlaylist) another);
    }

    private boolean equalTo(MediaPlaylistBuilder.ImmutableMediaPlaylist another) {
      return targetDuration == another.targetDuration
          && mediaSequence == another.mediaSequence
          && ongoing == another.ongoing
          && Objects.equals(playlistType, another.playlistType)
          && iFramesOnly == another.iFramesOnly
          && mediaSegments.equals(another.mediaSegments)
          && Objects.equals(version, another.version)
          && independentSegments == another.independentSegments;
    }

    /**
     * Computes a hash code from attributes: {@code targetDuration}, {@code mediaSequence}, {@code ongoing}, {@code playlistType}, {@code iFramesOnly}, {@code mediaSegments}, {@code version}, {@code independentSegments}.
     * @return hashCode value
     */
    @Override
    public int hashCode() {
      int h = 5381;
      h += (h << 5) + targetDuration;
      h += (h << 5) + mediaSequence;
      h += (h << 5) + Boolean.hashCode(ongoing);
      h += (h << 5) + Objects.hashCode(playlistType);
      h += (h << 5) + Boolean.hashCode(iFramesOnly);
      h += (h << 5) + mediaSegments.hashCode();
      h += (h << 5) + Objects.hashCode(version);
      h += (h << 5) + Boolean.hashCode(independentSegments);
      return h;
    }

    /**
     * Prints the immutable value {@code MediaPlaylist} with attribute values.
     * @return A string representation of the value
     */
    @Override
    public String toString() {
      StringBuilder builder = new StringBuilder("MediaPlaylist{");
      builder.append("targetDuration=").append(targetDuration);
      builder.append(", ");
      builder.append("mediaSequence=").append(mediaSequence);
      builder.append(", ");
      builder.append("ongoing=").append(ongoing);
      if (playlistType != null) {
        builder.append(", ");
        builder.append("playlistType=").append(playlistType);
      }
      builder.append(", ");
      builder.append("iFramesOnly=").append(iFramesOnly);
      builder.append(", ");
      builder.append("mediaSegments=").append(mediaSegments);
      if (version != null) {
        builder.append(", ");
        builder.append("version=").append(version);
      }
      builder.append(", ");
      builder.append("independentSegments=").append(independentSegments);
      return builder.append("}").toString();
    }
  }

  private static <T> List<T> createSafeList(Iterable<? extends T> iterable, boolean checkNulls, boolean skipNulls) {
    ArrayList<T> list;
    if (iterable instanceof Collection<?>) {
      int size = ((Collection<?>) iterable).size();
      if (size == 0) return Collections.emptyList();
      list = new ArrayList<T>();
    } else {
      list = new ArrayList<T>();
    }
    for (T element : iterable) {
      if (skipNulls && element == null) continue;
      if (checkNulls) Objects.requireNonNull(element, "element");
      list.add(element);
    }
    return list;
  }

  private static <T> List<T> createUnmodifiableList(boolean clone, List<T> list) {
    switch(list.size()) {
    case 0: return Collections.emptyList();
    case 1: return Collections.singletonList(list.get(0));
    default:
      if (clone) {
        return Collections.unmodifiableList(new ArrayList<T>(list));
      } else {
        if (list instanceof ArrayList<?>) {
          ((ArrayList<?>) list).trimToSize();
        }
        return Collections.unmodifiableList(list);
      }
    }
  }
}
