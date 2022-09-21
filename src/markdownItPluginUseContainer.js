const { hash } = require('@vuepress/shared-utils');
const markdownItFence =
  require('@mbalex99/markdown-it-fence/dist/src/index').default;

module.exports = {
    render: (tokens, idx) => {
      const token = tokens[idx];
      const key = `mermaid_${hash(idx)}`;
      const { content } = token;

      md.$dataBlock[key] = content;

      return `<Mermaid id="${key}" :graph="$dataBlock.${key}"></Mermaid>`;
    },
    validate: (params) => {
      return params.trim().match(/^mermaid\s+(.*)$/);
    },
  };
}
